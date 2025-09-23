import React, { useState, useEffect } from "react";
import Swal from "sweetalert2";
import { FaEye, FaEyeSlash } from "react-icons/fa";

function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [showPassword, setShowPassword] = useState(false);

  useEffect(() => {
    const id = sessionStorage.getItem("id");
    if (id) {
      window.location.href = "/dashboard";
    }
  }, []);

  const [failedAttempts, setFailedAttempts] = useState(0);
  const [lockoutUntil, setLockoutUntil] = useState(null);

  useEffect(() => {
    const storedAttempts = parseInt(sessionStorage.getItem("failedAttempts") || "0", 10);
    const storedLockout = sessionStorage.getItem("lockoutUntil");
    setFailedAttempts(storedAttempts);
    setLockoutUntil(storedLockout ? new Date(storedLockout) : null);
  }, []);

  const handleLogin = async (e) => {
    e.preventDefault();

    if (lockoutUntil && new Date() < lockoutUntil) {
      const remaining = Math.ceil((lockoutUntil - new Date()) / 60000);
      Swal.fire({
        icon: "error",
        title: "Account Locked",
        text: `Too many failed attempts. Please try again in ${remaining} minute(s).`,
      });
      return;
    }

    if (email.trim() !== "" && password.trim() !== "") {
      try {
        const response = await fetch(process.env.REACT_APP_API_URL + "select", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ table: "users", conditions: { email, password } }),
        });

        const result = await response.json();
        if (result.data && result.data.length > 0) {
          Object.entries(result.data[0]).forEach(([key, value]) => {
            sessionStorage.setItem(key, value);
          });
          sessionStorage.setItem("failedAttempts", "0");
          sessionStorage.removeItem("lockoutUntil");

          await fetch(process.env.REACT_APP_API_URL + "insert", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              table: "logs",
              data: {
                user_id: result.data[0].id,
                action: "login",
                table_name: "users",
                record_id: result.data[0].id,
                message: `User ${result.data[0].email} logged in successfully`,
              },
            }),
          });

          window.location.href = "/";
        } else {
          let newAttempts = failedAttempts + 1;
          let lockMinutes = 0;
          if (newAttempts >= 5) lockMinutes = 5;
          else if (newAttempts >= 3) lockMinutes = 3;

          if (lockMinutes > 0) {
            const until = new Date(Date.now() + lockMinutes * 60000);
            setLockoutUntil(until);
            sessionStorage.setItem("lockoutUntil", until.toISOString());
            Swal.fire({
              icon: "error",
              title: "Account Locked",
              text: `Too many failed attempts. Please try again in ${lockMinutes} minute(s).`,
            });
          } else {
            setFailedAttempts(newAttempts);
            sessionStorage.setItem("failedAttempts", newAttempts.toString());
            Swal.fire({
              icon: "error",
              title: "Login Failed",
                  text: "User not found or password incorrect",
                });
              }
            }
          } catch (error) {
            Swal.fire({
              icon: "error",
              title: "Error",
          text: "Something went wrong. Please try again.",
        });
      }
    } else {
      Swal.fire({
        icon: "warning",
        title: "Missing Fields",
        text: "Please enter email and password",
      });
    }
  };

  return (
    <div className="vh-100 d-flex align-items-center justify-content-center" style={{ background: "#f8f9fa" }}>
      <div className="row w-100 h-100 m-0">
        {/* Login Column */}
        <div className="col-12 col-md-6 d-flex align-items-center justify-content-center p-3" style={{ background: "#fff" }}>
          <div style={{ width: "100%", maxWidth: "350px", borderRadius: "16px" }}>
            <div className="text-center mb-4">
              <img src="/logo.png" alt="Logo" style={{ width: "150px", marginBottom: "10px" }} />
              <h3 className="mb-0">Login</h3>
            </div>
            <form onSubmit={handleLogin}>
              <div className="mb-3">
                <label className="form-label">Email</label>
                <input
                  type="email"
                  className="form-control"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="Enter your email"
                  required
                />
              </div>
              <div className="mb-3">
                <label className="form-label">Password</label>
                <div className="input-group">
                  <input
                    type={showPassword ? "text" : "password"}
                    className="form-control"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    placeholder="Enter your password"
                    required
                  />
                  <button type="button" className="btn btn-outline-secondary" onClick={() => setShowPassword((prev) => !prev)} tabIndex={-1}>
                    {showPassword ? <FaEyeSlash /> : <FaEye />}
                  </button>
                </div>
              </div>
              <button type="submit" className="btn btn-primary w-100">
                Login
              </button>
            </form>
          </div>
        </div>

        {/* Info Column */}
        <div
          className="col-12 col-md-6 d-flex align-items-center justify-content-center p-4"
          style={{
            backgroundImage: "url('/bg.jpg')",
            backgroundSize: "cover",
            backgroundPosition: "center",
            color: "#fff",
            textAlign: "center",
          }}
        >
          <div style={{ maxWidth: "300px" }}>
            <h2 style={{ fontWeight: "bold", fontSize: "1.8rem", marginBottom: "10px" }}>
              School Management <br /> System III
            </h2>
            <small style={{ fontSize: "1rem", letterSpacing: "1px" }}>
              Class Scheduling System
            </small>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Login;

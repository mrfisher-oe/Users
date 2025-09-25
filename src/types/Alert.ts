export type AlertItem = {
  operation: string;
  alertType: AlertType;
  message: string;
}

export type AlertType = "error" | "success" | "info" | "warning" | "";
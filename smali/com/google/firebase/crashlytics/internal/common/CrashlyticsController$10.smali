.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->logAnalyticsAppExceptionEvent(J)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-wide p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fatal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;->val$timestamp:J

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$10;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1200(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;

    move-result-object p0

    const-string v1, "_ae"

    invoke-interface {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

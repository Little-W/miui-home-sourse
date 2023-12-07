.class public final synthetic Lcom/miui/privacy/reportId/-$$Lambda$FirebaseInstallationsId$Fsr2B0zs4B27mUugSNcn8KKIEBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseInstallationsId$Fsr2B0zs4B27mUugSNcn8KKIEBs;->f$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/privacy/reportId/-$$Lambda$FirebaseInstallationsId$Fsr2B0zs4B27mUugSNcn8KKIEBs;->f$0:Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;

    invoke-static {p0, p1}, Lcom/miui/privacy/reportId/FirebaseInstallationsId;->lambda$getFromRemote$0(Lcom/miui/privacy/reportId/AsyncFetchFirebaseId$AsyncFetchFirebaseIdCallback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

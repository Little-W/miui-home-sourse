.class public final Lcom/miui/home/launcher/folder/AppPredictHelper$mAppPredictServiceConnection$1;
.super Ljava/lang/Object;
.source "AppPredictHelper.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/AppPredictHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 31
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-static {p2}, Lcom/miui/apppredict/IAppPredict$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/apppredict/IAppPredict;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$setMAppPredictService$p(Lcom/miui/home/launcher/folder/AppPredictHelper;Lcom/miui/apppredict/IAppPredict;)V

    .line 32
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromService(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 36
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    const/4 p1, 0x0

    check-cast p1, Lcom/miui/apppredict/IAppPredict;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$setMAppPredictService$p(Lcom/miui/home/launcher/folder/AppPredictHelper;Lcom/miui/apppredict/IAppPredict;)V

    return-void
.end method

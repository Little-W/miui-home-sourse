.class public final Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1;
.super Lcom/miui/apppredict/IAppPredictCallBack$Stub;
.source "AppPredictHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/AppPredictHelper;->getAppPredictFromServiceInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppPredictHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPredictHelper.kt\ncom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1\n*L\n1#1,192:1\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/miui/apppredict/IAppPredictCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAppList(Ljava/lang/String;)V
    .locals 2

    .line 54
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/miui/home/launcher/folder/AppPredictList;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/AppPredictList;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$setMPredictInfoList$p(Lcom/miui/home/launcher/folder/AppPredictHelper;Lcom/miui/home/launcher/folder/AppPredictList;)V

    .line 55
    sget-object p0, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/AppPredictHelper;->access$getMPredictInfoList$p(Lcom/miui/home/launcher/folder/AppPredictHelper;)Lcom/miui/home/launcher/folder/AppPredictList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/AppPredictList;->getApp_list()[Lcom/miui/home/launcher/folder/AppPredictItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper$getAppPredictFromServiceInternal$1$loadAppList$1$1;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

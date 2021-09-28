.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->updateSmallWindowPackageNameInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_package_name"

    .line 84
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$202(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "SmallWindowStateHelper"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowPackageName, mSmallWindowPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$4;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowPackageName error"

    .line 92
    :goto_0
    return-void
.end method

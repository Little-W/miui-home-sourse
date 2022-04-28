.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;
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

    .line 132
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, v1, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "freeform_package_name"

    .line 136
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$102(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$202(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "SmallWindowStateHelper"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmallWindowPackageName, mSmallWindowPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings$5;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;->access$100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmallWindowStateHelper"

    const-string v2, "updateSmallWindowPackageName error"

    .line 144
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

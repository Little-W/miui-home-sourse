.class public Lcom/mi/preinstall/PAIPackageAddRemoveTask;
.super Ljava/lang/Object;
.source "PAIPackageAddRemoveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsAddPkg:Z

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p2, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mIsAddPkg:Z

    .line 18
    iput-object p1, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PAIAppAddRemove"

    const-string v1, "package name is null"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 27
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mIsAddPkg:Z

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mi/preinstall/AutoInstallParserHelp;->writePreinstallPAIPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mi/preinstall/PAIPackageAddRemoveTask;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mi/preinstall/AutoInstallParserHelp;->removeFromPreinstallPAIList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PAIAppAddRemove"

    const-string v2, "run: "

    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

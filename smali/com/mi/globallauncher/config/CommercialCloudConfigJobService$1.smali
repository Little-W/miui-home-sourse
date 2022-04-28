.class Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;
.super Ljava/lang/Object;
.source "CommercialCloudConfigJobService.java"

# interfaces
.implements Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iput-object p2, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigFailed()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigFailed()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iget-object v1, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onConfigSucceed()V
    .locals 3

    .line 50
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->access$000()Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;->onConfigSucceed()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->this$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;

    iget-object v1, p0, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

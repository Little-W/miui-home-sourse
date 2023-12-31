.class public final synthetic Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$GVDY7PmyJhqhnCHBsYkkQeE88ZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$GVDY7PmyJhqhnCHBsYkkQeE88ZM;->f$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/config/-$$Lambda$CommercialCloudConfigJobService$GVDY7PmyJhqhnCHBsYkkQeE88ZM;->f$0:Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;

    check-cast p1, Lcom/mi/globallauncher/config/CommercialConfigResult;

    invoke-static {p0, p1}, Lcom/mi/globallauncher/config/CommercialCloudConfigJobService;->lambda$updateGameFlowCloudConfig$0(Lcom/mi/globallauncher/config/CommercialCloudConfigJobService$ConfigCallback;Lcom/mi/globallauncher/config/CommercialConfigResult;)V

    return-void
.end method

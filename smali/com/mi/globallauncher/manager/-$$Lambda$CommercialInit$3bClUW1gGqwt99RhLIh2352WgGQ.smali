.class public final synthetic Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/manager/CommercialInit;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lio/branch/search/BranchConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/manager/CommercialInit;ZLio/branch/search/BranchConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$0:Lcom/mi/globallauncher/manager/CommercialInit;

    iput-boolean p2, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$1:Z

    iput-object p3, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$2:Lio/branch/search/BranchConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$0:Lcom/mi/globallauncher/manager/CommercialInit;

    iget-boolean v1, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$1:Z

    iget-object p0, p0, Lcom/mi/globallauncher/manager/-$$Lambda$CommercialInit$3bClUW1gGqwt99RhLIh2352WgGQ;->f$2:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0, v1, p0}, Lcom/mi/globallauncher/manager/CommercialInit;->lambda$initBranchSdk$0$CommercialInit(ZLio/branch/search/BranchConfiguration;)V

    return-void
.end method

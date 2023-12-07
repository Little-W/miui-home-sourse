.class public Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;
.super Ljava/lang/Object;


# instance fields
.field private branchSearchHint:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->branchSearchHint:Z

    return-void
.end method


# virtual methods
.method public isBranchSearchHint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->branchSearchHint:Z

    return p0
.end method

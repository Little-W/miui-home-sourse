.class public Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;
.super Ljava/lang/Object;
.source "BranchSwitchChangeMessage.java"


# instance fields
.field private branchSearchHint:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->branchSearchHint:Z

    return-void
.end method


# virtual methods
.method public isBranchSearchHint()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->branchSearchHint:Z

    return v0
.end method

.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lmiuix/animation/controller/FolmeState;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method alignState(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 74
    invoke-interface {v1, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 73
    invoke-static {v0, p1, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 34
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->cancel()V

    :cond_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .line 20
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->clean()V

    :cond_0
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getProperty(I)Lmiuix/animation/property/FloatProperty;
    .locals 1

    .line 68
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

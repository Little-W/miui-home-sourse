.class public interface abstract Lmiuix/animation/IStateStyle;
.super Ljava/lang/Object;
.source "IStateStyle.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# virtual methods
.method public abstract addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract getCurrentState()Lmiuix/animation/controller/AnimState;
.end method

.method public varargs abstract predictDuration([Ljava/lang/Object;)J
.end method

.method public abstract setFlags(J)Lmiuix/animation/IStateStyle;
.end method

.method public abstract setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

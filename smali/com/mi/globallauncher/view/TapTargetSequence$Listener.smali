.class public interface abstract Lcom/mi/globallauncher/view/TapTargetSequence$Listener;
.super Ljava/lang/Object;
.source "TapTargetSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSequenceCanceled(Lcom/mi/globallauncher/view/TapTarget;)V
.end method

.method public abstract onSequenceFinish()V
.end method

.method public abstract onSequenceStep(Lcom/mi/globallauncher/view/TapTarget;Z)V
.end method

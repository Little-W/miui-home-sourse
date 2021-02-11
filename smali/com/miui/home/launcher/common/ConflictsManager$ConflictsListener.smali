.class public interface abstract Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;
.super Ljava/lang/Object;
.source "ConflictsManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/ConflictsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConflictsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getPriority()I
.end method

.method public abstract onGainLock()V
.end method

.method public abstract onLoseLock()V
.end method

.method public abstract onReleaseLock()V
.end method

.method public abstract onSomeoneReleaseLock()Z
.end method

.method public abstract setPriority(I)V
.end method

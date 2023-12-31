.class public Lcom/miui/home/launcher/common/ConflictsListenerAdapter;
.super Ljava/lang/Object;
.source "ConflictsListenerAdapter.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;


# instance fields
.field private mConflictsManagerPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 42
    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;->getPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;->compareTo(Lcom/miui/home/launcher/common/ConflictsManager$ConflictsListener;)I

    move-result p0

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;->mConflictsManagerPriority:I

    return p0
.end method

.method public onGainLock()V
    .locals 0

    return-void
.end method

.method public onLoseLock()V
    .locals 0

    return-void
.end method

.method public onReleaseLock()V
    .locals 0

    return-void
.end method

.method public onSomeoneReleaseLock()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPriority(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;->mConflictsManagerPriority:I

    return-void
.end method

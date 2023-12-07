.class public Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;
.super Ljava/lang/Object;
.source "EditModeChangedMessage.java"


# instance fields
.field private final mCurrentEditState:I

.field private final mLastEditState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mCurrentEditState:I

    .line 9
    iput p2, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mLastEditState:I

    return-void
.end method


# virtual methods
.method public getCurrentEditState()I
    .locals 0

    .line 13
    iget p0, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mCurrentEditState:I

    return p0
.end method

.method public getLastEditState()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mLastEditState:I

    return p0
.end method

.class public Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;
.super Ljava/lang/Object;
.source "FolderRecommendScreenAnimStateMessage.java"


# instance fields
.field private mAnimState:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;->mAnimState:I

    .line 12
    iput p1, p0, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;->mAnimState:I

    return-void
.end method


# virtual methods
.method public getAnimState()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;->mAnimState:I

    return v0
.end method

.class public Lcom/miui/home/launcher/common/messages/LongClickMessage;
.super Ljava/lang/Object;
.source "LongClickMessage.java"


# instance fields
.field private mRawX:F

.field private mRawY:F

.field private mWho:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mWho:Landroid/view/View;

    .line 12
    iput p2, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawX:F

    .line 13
    iput p3, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawY:F

    return-void
.end method


# virtual methods
.method public getRawX()F
    .locals 0

    .line 17
    iget p0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawX:F

    return p0
.end method

.method public getRawY()F
    .locals 0

    .line 21
    iget p0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mRawY:F

    return p0
.end method

.method public getWho()Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/common/messages/LongClickMessage;->mWho:Landroid/view/View;

    return-object p0
.end method

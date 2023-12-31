.class public Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;
.super Ljava/lang/Object;
.source "OverlayReconnectMessage.java"


# instance fields
.field private final mDirection:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->mDirection:I

    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->mDirection:I

    return p0
.end method

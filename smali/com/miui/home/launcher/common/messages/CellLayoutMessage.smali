.class public Lcom/miui/home/launcher/common/messages/CellLayoutMessage;
.super Ljava/lang/Object;
.source "CellLayoutMessage.java"


# instance fields
.field private mMessage:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;->mMessage:I

    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/miui/home/launcher/common/messages/CellLayoutMessage;->mMessage:I

    return v0
.end method

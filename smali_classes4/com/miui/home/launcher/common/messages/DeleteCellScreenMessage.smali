.class public Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;
.super Ljava/lang/Object;
.source "DeleteCellScreenMessage.java"


# static fields
.field public static AFTER_DELETE:I = 0x1

.field public static BEFORE_DELETE:I


# instance fields
.field private mDeleteTime:I

.field private mScreenId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->mScreenId:J

    .line 13
    iput p3, p0, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->mDeleteTime:I

    return-void
.end method


# virtual methods
.method public getDeleteTime()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/miui/home/launcher/common/messages/DeleteCellScreenMessage;->mDeleteTime:I

    return p0
.end method

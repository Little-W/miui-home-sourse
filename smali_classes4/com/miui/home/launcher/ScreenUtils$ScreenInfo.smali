.class final Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenInfo"
.end annotation


# instance fields
.field screenId:J

.field screenOrder:I

.field screenType:I


# direct methods
.method public constructor <init>(JII)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-wide p1, p0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenId:J

    .line 241
    iput p3, p0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenOrder:I

    .line 242
    iput p4, p0, Lcom/miui/home/launcher/ScreenUtils$ScreenInfo;->screenType:I

    return-void
.end method

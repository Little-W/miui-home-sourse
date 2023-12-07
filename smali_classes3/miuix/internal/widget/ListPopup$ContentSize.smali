.class Lmiuix/internal/widget/ListPopup$ContentSize;
.super Ljava/lang/Object;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentSize"
.end annotation


# instance fields
.field mHasContentWidth:Z

.field mHeight:I

.field mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/widget/ListPopup$1;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>()V

    return-void
.end method


# virtual methods
.method public updateWidth(I)V
    .locals 0

    .line 494
    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    return-void
.end method

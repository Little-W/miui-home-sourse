.class Lmiuix/internal/widget/ListPopup$ContentSize;
.super Ljava/lang/Object;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentSize"
.end annotation


# instance fields
.field mHasContentWidth:Z

.field mHeight:I

.field mWidth:I

.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method private constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/widget/ListPopup;Lmiuix/internal/widget/ListPopup$1;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>(Lmiuix/internal/widget/ListPopup;)V

    return-void
.end method


# virtual methods
.method public updateWidth(I)V
    .locals 0

    .line 424
    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    const/4 p1, 0x1

    .line 425
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    return-void
.end method

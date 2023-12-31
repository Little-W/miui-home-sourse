.class Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTouchResult"
.end annotation


# instance fields
.field public endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field public reached:Z

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    .line 1071
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

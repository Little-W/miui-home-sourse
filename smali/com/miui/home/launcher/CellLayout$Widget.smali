.class Lcom/miui/home/launcher/CellLayout$Widget;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Widget"
.end annotation


# instance fields
.field public mAlreadyPut:Z

.field mRegion:Landroid/graphics/Region;

.field public mSpanX:I

.field public mSpanY:I

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;II)V
    .locals 0

    .line 2902
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$Widget;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2910
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    .line 2903
    iput p2, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    .line 2904
    iput p3, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    return-void
.end method

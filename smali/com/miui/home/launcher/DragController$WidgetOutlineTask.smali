.class Lcom/miui/home/launcher/DragController$WidgetOutlineTask;
.super Lcom/miui/home/launcher/DragController$OutlineTask;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetOutlineTask"
.end annotation


# static fields
.field private static final sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;


# instance fields
.field private final cachedOutline:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 674
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    return-void
.end method

.method constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 682
    sget-object v0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/DragController$OutlineTask;-><init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V

    .line 683
    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutline:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method getOutline()Landroid/graphics/Bitmap;
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

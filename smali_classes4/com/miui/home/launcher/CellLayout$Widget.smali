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

    .line 2966
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$Widget;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2974
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mRegion:Landroid/graphics/Region;

    .line 2967
    iput p2, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    .line 2968
    iput p3, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2979
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2980
    :cond_1
    check-cast p1, Lcom/miui/home/launcher/CellLayout$Widget;

    .line 2981
    iget v2, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2987
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$Widget;->mSpanY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

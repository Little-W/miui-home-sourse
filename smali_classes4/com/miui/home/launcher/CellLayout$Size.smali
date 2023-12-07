.class Lcom/miui/home/launcher/CellLayout$Size;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Size"
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2996
    iput p1, p0, Lcom/miui/home/launcher/CellLayout$Size;->width:I

    .line 2997
    iput p2, p0, Lcom/miui/home/launcher/CellLayout$Size;->height:I

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

    .line 3003
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 3004
    :cond_1
    check-cast p1, Lcom/miui/home/launcher/CellLayout$Size;

    .line 3005
    iget v2, p0, Lcom/miui/home/launcher/CellLayout$Size;->width:I

    iget v3, p1, Lcom/miui/home/launcher/CellLayout$Size;->width:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$Size;->height:I

    iget p1, p1, Lcom/miui/home/launcher/CellLayout$Size;->height:I

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

    .line 3010
    iget v1, p0, Lcom/miui/home/launcher/CellLayout$Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/miui/home/launcher/CellLayout$Size;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

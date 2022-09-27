.class public Lcom/miui/home/launcher/shortcuts/TriangleShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "TriangleShape.java"


# instance fields
.field private mTriangularPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    return-void
.end method

.method public static create(FFZ)Lcom/miui/home/launcher/shortcuts/TriangleShape;
    .locals 3

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    div-float p2, p0, v1

    .line 41
    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    div-float p2, p0, v1

    .line 45
    invoke-virtual {v0, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 50
    :goto_0
    new-instance p2, Lcom/miui/home/launcher/shortcuts/TriangleShape;

    invoke-direct {p2, v0, p0, p1}, Lcom/miui/home/launcher/shortcuts/TriangleShape;-><init>(Landroid/graphics/Path;FF)V

    return-object p2
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method

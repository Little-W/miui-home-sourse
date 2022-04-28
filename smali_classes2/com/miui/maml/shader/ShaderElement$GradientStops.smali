.class public final Lcom/miui/maml/shader/ShaderElement$GradientStops;
.super Ljava/lang/Object;
.source "ShaderElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/shader/ShaderElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "GradientStops"
.end annotation


# instance fields
.field private mColors:[I

.field protected mGradientStopArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/shader/ShaderElement$GradientStop;",
            ">;"
        }
    .end annotation
.end field

.field private mPositions:[F

.field final synthetic this$0:Lcom/miui/maml/shader/ShaderElement;


# direct methods
.method protected constructor <init>(Lcom/miui/maml/shader/ShaderElement;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/shader/ShaderElement$GradientStop;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColors()[I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    return-object v0
.end method

.method public getPositions()[F
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    return-void
.end method

.method public size()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public update()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/shader/ShaderElement$GradientStops;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getColor()I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v1, v4

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mColors:[I

    aput v2, v3, v0

    .line 93
    iget-object v2, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mGradientStopArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/shader/ShaderElement$GradientStop;

    invoke-virtual {v2}, Lcom/miui/maml/shader/ShaderElement$GradientStop;->getPosition()F

    move-result v2

    .line 94
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aget v3, v3, v0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->mPositions:[F

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/miui/maml/shader/ShaderElement$GradientStops;->this$0:Lcom/miui/maml/shader/ShaderElement;

    invoke-virtual {v0}, Lcom/miui/maml/shader/ShaderElement;->onGradientStopsChanged()V

    :cond_3
    return-void
.end method

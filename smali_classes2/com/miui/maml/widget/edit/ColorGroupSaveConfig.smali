.class public final Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final selectColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectColors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    iput p3, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/lang/String;Ljava/util/Map;IILjava/lang/Object;)Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->copy(Ljava/lang/String;Ljava/util/Map;I)Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Map;I)Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectColors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;-><init>(Ljava/lang/String;Ljava/util/Map;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    iget p1, p1, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectColors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorGroupSaveConfig(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->selectColors:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

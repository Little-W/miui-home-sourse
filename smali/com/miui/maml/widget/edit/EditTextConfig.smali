.class public final Lcom/miui/maml/widget/edit/EditTextConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final editable:Z

.field private final maxLength:I

.field private final minLength:I

.field private final valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZII)V"
        }
    .end annotation

    const-string v0, "n"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p4, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->valueList:Ljava/util/List;

    iput-boolean p5, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->editable:Z

    iput p6, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->minLength:I

    iput p7, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->maxLength:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 17
    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p6

    :goto_1
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/miui/maml/widget/edit/EditTextConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZII)V

    return-void
.end method


# virtual methods
.method public final getEditable()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->editable:Z

    return v0
.end method

.method public final getMaxLength()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->maxLength:I

    return v0
.end method

.method public final getMinLength()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->minLength:I

    return v0
.end method

.method public final getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/miui/maml/widget/edit/EditTextConfig;->valueList:Ljava/util/List;

    return-object v0
.end method

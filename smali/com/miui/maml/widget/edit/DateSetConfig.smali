.class public final Lcom/miui/maml/widget/edit/DateSetConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final defaultValue:J

.field private repeat:I

.field private final repeatName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-wide p4, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->defaultValue:J

    iput-object p6, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->repeatName:Ljava/lang/String;

    iput p7, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->repeat:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    .line 81
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p4

    .line 82
    invoke-direct/range {v2 .. v9}, Lcom/miui/maml/widget/edit/DateSetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getDefaultValue()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->defaultValue:J

    return-wide v0
.end method

.method public final getRepeat()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->repeat:I

    return v0
.end method

.method public final getRepeatName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->repeatName:Ljava/lang/String;

    return-object v0
.end method

.method public final setRepeat(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/miui/maml/widget/edit/DateSetConfig;->repeat:I

    return-void
.end method

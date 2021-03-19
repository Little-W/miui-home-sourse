.class synthetic Lcom/miui/maml/util/ColorParser$1;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/ColorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    invoke-static {}, Lcom/miui/maml/util/ColorParser$ExpressionType;->values()[Lcom/miui/maml/util/ColorParser$ExpressionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    :try_start_0
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    sget-object v1, Lcom/miui/maml/util/ColorParser$ExpressionType;->CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    sget-object v1, Lcom/miui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    sget-object v1, Lcom/miui/maml/util/ColorParser$ExpressionType;->ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

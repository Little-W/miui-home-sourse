.class synthetic Lcom/miui/maml/elements/PermanenceElement$1;
.super Ljava/lang/Object;
.source "PermanenceElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/PermanenceElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$data$VariableType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/miui/maml/data/VariableType;->values()[Lcom/miui/maml/data/VariableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/elements/PermanenceElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    :try_start_0
    sget-object v0, Lcom/miui/maml/elements/PermanenceElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v1, Lcom/miui/maml/data/VariableType;->STR:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/elements/PermanenceElement$1;->$SwitchMap$com$miui$maml$data$VariableType:[I

    sget-object v1, Lcom/miui/maml/data/VariableType;->NUM:Lcom/miui/maml/data/VariableType;

    invoke-virtual {v1}, Lcom/miui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

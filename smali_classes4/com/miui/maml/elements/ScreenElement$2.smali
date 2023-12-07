.class synthetic Lcom/miui/maml/elements/ScreenElement$2;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

.field static final synthetic $SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 559
    invoke-static {}, Lcom/miui/maml/elements/ScreenElement$Align;->values()[Lcom/miui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    sget-object v2, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    sget-object v3, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v3}, Lcom/miui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    :catch_1
    invoke-static {}, Lcom/miui/maml/elements/ScreenElement$AlignV;->values()[Lcom/miui/maml/elements/ScreenElement$AlignV;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    :try_start_2
    sget-object v2, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    sget-object v3, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v3}, Lcom/miui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    sget-object v2, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.class synthetic Lcom/miui/maml/ScreenElementRoot$4;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 892
    invoke-static {}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->values()[Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    :try_start_0
    sget-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/maml/ScreenElementRoot$4;->$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType:[I

    sget-object v1, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

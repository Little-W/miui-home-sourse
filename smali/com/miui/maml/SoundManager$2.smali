.class synthetic Lcom/miui/maml/SoundManager$2;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$maml$SoundManager$Command:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 136
    invoke-static {}, Lcom/miui/maml/SoundManager$Command;->values()[Lcom/miui/maml/SoundManager$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    :try_start_0
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/miui/maml/SoundManager$2;->$SwitchMap$com$miui$maml$SoundManager$Command:[I

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v1}, Lcom/miui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

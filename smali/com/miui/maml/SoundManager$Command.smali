.class public final enum Lcom/miui/maml/SoundManager$Command;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/SoundManager$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/SoundManager$Command;

.field public static final enum Pause:Lcom/miui/maml/SoundManager$Command;

.field public static final enum Play:Lcom/miui/maml/SoundManager$Command;

.field public static final enum Resume:Lcom/miui/maml/SoundManager$Command;

.field public static final enum Stop:Lcom/miui/maml/SoundManager$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/miui/maml/SoundManager$Command;

    const-string v1, "Play"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    .line 51
    new-instance v0, Lcom/miui/maml/SoundManager$Command;

    const-string v1, "Pause"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    .line 52
    new-instance v0, Lcom/miui/maml/SoundManager$Command;

    const-string v1, "Resume"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    .line 53
    new-instance v0, Lcom/miui/maml/SoundManager$Command;

    const-string v1, "Stop"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/maml/SoundManager$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    const/4 v0, 0x4

    .line 49
    new-array v0, v0, [Lcom/miui/maml/SoundManager$Command;

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/maml/SoundManager$Command;->$VALUES:[Lcom/miui/maml/SoundManager$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/miui/maml/SoundManager$Command;
    .locals 1

    const-string v0, "pause"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object p0, Lcom/miui/maml/SoundManager$Command;->Pause:Lcom/miui/maml/SoundManager$Command;

    return-object p0

    :cond_0
    const-string v0, "resume"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object p0, Lcom/miui/maml/SoundManager$Command;->Resume:Lcom/miui/maml/SoundManager$Command;

    return-object p0

    :cond_1
    const-string v0, "stop"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 61
    sget-object p0, Lcom/miui/maml/SoundManager$Command;->Stop:Lcom/miui/maml/SoundManager$Command;

    return-object p0

    .line 63
    :cond_2
    sget-object p0, Lcom/miui/maml/SoundManager$Command;->Play:Lcom/miui/maml/SoundManager$Command;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/SoundManager$Command;
    .locals 1

    .line 49
    const-class v0, Lcom/miui/maml/SoundManager$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/SoundManager$Command;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/SoundManager$Command;
    .locals 1

    .line 49
    sget-object v0, Lcom/miui/maml/SoundManager$Command;->$VALUES:[Lcom/miui/maml/SoundManager$Command;

    invoke-virtual {v0}, [Lcom/miui/maml/SoundManager$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/SoundManager$Command;

    return-object v0
.end method

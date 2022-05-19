.class final enum Lcom/miui/home/launcher/InstallShortcutReceiver$Position;
.super Ljava/lang/Enum;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/InstallShortcutReceiver$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

.field public static final enum QUICK_CALL_SCREEN:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

.field public static final enum RECOMMEND_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

.field public static final enum TOOLS_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

.field public static final enum WORKSPACE:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 114
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const-string v1, "QUICK_CALL_SCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->QUICK_CALL_SCREEN:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    .line 115
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const-string v1, "WORKSPACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->WORKSPACE:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    .line 116
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const-string v1, "RECOMMEND_FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->RECOMMEND_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    .line 117
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const-string v1, "TOOLS_FOLDER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->TOOLS_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    const/4 v0, 0x4

    .line 113
    new-array v0, v0, [Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->QUICK_CALL_SCREEN:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->WORKSPACE:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->RECOMMEND_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->TOOLS_FOLDER:Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->$VALUES:[Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutReceiver$Position;
    .locals 1

    .line 113
    const-class v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/InstallShortcutReceiver$Position;
    .locals 1

    .line 113
    sget-object v0, Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->$VALUES:[Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/InstallShortcutReceiver$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/InstallShortcutReceiver$Position;

    return-object v0
.end method

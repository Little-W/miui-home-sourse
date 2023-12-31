.class final enum Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
.super Ljava/lang/Enum;
.source "InstallShortcutBroadcastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/InstallShortcutBroadcastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field public static final enum DUPLICATE:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field public static final enum FAILED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field public static final enum OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

.field public static final enum SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    const/4 v1, 0x0

    const-string v2, "SUCCEED"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 17
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->FAILED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 18
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    const/4 v3, 0x2

    const-string v4, "OVERFLOW"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 19
    new-instance v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    const/4 v4, 0x3

    const-string v5, "DUPLICATE"

    invoke-direct {v0, v5, v4}, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->DUPLICATE:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    .line 15
    sget-object v5, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->SUCCEED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    aput-object v5, v0, v1

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->FAILED:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->OVERFLOW:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->DUPLICATE:Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->$VALUES:[Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 1

    .line 15
    const-class v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->$VALUES:[Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/InstallShortcutBroadcastUtils$Result;

    return-object v0
.end method

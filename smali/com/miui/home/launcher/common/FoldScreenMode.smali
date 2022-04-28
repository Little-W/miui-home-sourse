.class public final enum Lcom/miui/home/launcher/common/FoldScreenMode;
.super Ljava/lang/Enum;
.source "FoldScreenMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/common/FoldScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/common/FoldScreenMode;

.field public static final enum LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

.field public static final enum NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/common/FoldScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;

    .line 9
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenMode;

    const-string v1, "LARGE_SCREEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/common/FoldScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lcom/miui/home/launcher/common/FoldScreenMode;

    sget-object v1, Lcom/miui/home/launcher/common/FoldScreenMode;->NORMAL:Lcom/miui/home/launcher/common/FoldScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/FoldScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/FoldScreenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->$VALUES:[Lcom/miui/home/launcher/common/FoldScreenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/common/FoldScreenMode;
    .locals 1

    .line 7
    const-class v0, Lcom/miui/home/launcher/common/FoldScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/FoldScreenMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/common/FoldScreenMode;
    .locals 1

    .line 7
    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenMode;->$VALUES:[Lcom/miui/home/launcher/common/FoldScreenMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/common/FoldScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/common/FoldScreenMode;

    return-object v0
.end method

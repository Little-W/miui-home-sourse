.class public final enum Lcom/miui/home/launcher/anim/BackgroundType;
.super Ljava/lang/Enum;
.source "BackgroundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/anim/BackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum FOLD_AFFILIATED:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum NOT_DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

.field public static final enum SELECT:Lcom/miui/home/launcher/anim/BackgroundType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 9
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v2, 0x1

    const-string v3, "SELECT"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 10
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v3, 0x2

    const-string v4, "DRAGGING"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 11
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v4, 0x3

    const-string v5, "NOT_DRAGGING"

    invoke-direct {v0, v5, v4}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->NOT_DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 12
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v5, 0x4

    const-string v6, "DRAGGING_IN"

    invoke-direct {v0, v6, v5}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 13
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v6, 0x5

    const-string v7, "DEFAULT"

    invoke-direct {v0, v7, v6}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 14
    new-instance v0, Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v7, 0x6

    const-string v8, "FOLD_AFFILIATED"

    invoke-direct {v0, v8, v7}, Lcom/miui/home/launcher/anim/BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->FOLD_AFFILIATED:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/home/launcher/anim/BackgroundType;

    .line 7
    sget-object v8, Lcom/miui/home/launcher/anim/BackgroundType;->NORMAL:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->SELECT:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->NOT_DRAGGING:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DRAGGING_IN:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->FOLD_AFFILIATED:Lcom/miui/home/launcher/anim/BackgroundType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->$VALUES:[Lcom/miui/home/launcher/anim/BackgroundType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/anim/BackgroundType;
    .locals 1

    .line 7
    const-class v0, Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/BackgroundType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/anim/BackgroundType;
    .locals 1

    .line 7
    sget-object v0, Lcom/miui/home/launcher/anim/BackgroundType;->$VALUES:[Lcom/miui/home/launcher/anim/BackgroundType;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/anim/BackgroundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/anim/BackgroundType;

    return-object v0
.end method

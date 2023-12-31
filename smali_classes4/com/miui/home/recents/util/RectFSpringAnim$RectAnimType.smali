.class final enum Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;
.super Ljava/lang/Enum;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RectAnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

.field public static final enum RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1142
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v1, 0x0

    const-string v2, "RECT_CENTER_X"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1143
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v2, 0x1

    const-string v3, "RECT_CENTER_Y"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1144
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v3, 0x2

    const-string v4, "RECT_WIDTH"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1145
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v4, 0x3

    const-string v5, "RECT_RATIO"

    invoke-direct {v0, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1146
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v5, 0x4

    const-string v6, "RADIUS"

    invoke-direct {v0, v6, v5}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1147
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v6, 0x5

    const-string v7, "ALPHA"

    invoke-direct {v0, v7, v6}, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    .line 1141
    sget-object v7, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_X:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_CENTER_Y:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;
    .locals 1

    .line 1141
    const-class v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;
    .locals 1

    .line 1141
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->$VALUES:[Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    invoke-virtual {v0}, [Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/util/RectFSpringAnim$RectAnimType;

    return-object v0
.end method

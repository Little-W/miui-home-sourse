.class final enum Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$GraphicsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1814
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1815
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v2, 0x1

    const-string v3, "BEGIN_FILL"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1816
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v3, 0x2

    const-string v4, "BEGIN_GRADIENT_FILL"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1817
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v4, 0x3

    const-string v5, "CREATE_GRADIENT_BOX"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1818
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v5, 0x4

    const-string v6, "CURVE_TO"

    invoke-direct {v0, v6, v5}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1819
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v6, 0x5

    const-string v7, "CUBIC_CURVE_TO"

    invoke-direct {v0, v7, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1820
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v7, 0x6

    const-string v8, "DRAW_CIRCLE"

    invoke-direct {v0, v8, v7}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1821
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/4 v8, 0x7

    const-string v9, "DRAW_ELLIPSE"

    invoke-direct {v0, v9, v8}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1822
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v9, 0x8

    const-string v10, "DRAW_RECT"

    invoke-direct {v0, v10, v9}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1823
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v10, 0x9

    const-string v11, "DRAW_ROUND_RECT"

    invoke-direct {v0, v11, v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1824
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v11, 0xa

    const-string v12, "LINE_GRADIENT_STYLE"

    invoke-direct {v0, v12, v11}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1825
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v12, 0xb

    const-string v13, "LINE_STYLE"

    invoke-direct {v0, v13, v12}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1826
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v13, 0xc

    const-string v14, "LINE_TO"

    invoke-direct {v0, v14, v13}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1827
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v14, 0xd

    const-string v15, "MOVE_TO"

    invoke-direct {v0, v15, v14}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1828
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v15, 0xe

    const-string v14, "SET_RENDER_LISTENER"

    invoke-direct {v0, v14, v15}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 1813
    sget-object v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1813
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1813
    const-class v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .locals 1

    .line 1813
    sget-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    return-object v0
.end method

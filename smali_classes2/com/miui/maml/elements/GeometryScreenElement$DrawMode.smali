.class public final enum Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
.super Ljava/lang/Enum;
.source "GeometryScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GeometryScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field public static final enum STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 266
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v1, 0x0

    const-string v2, "STROKE_CENTER"

    invoke-direct {v0, v2, v1}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 268
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v2, 0x1

    const-string v3, "STROKE_OUTER"

    invoke-direct {v0, v3, v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 270
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v3, 0x2

    const-string v4, "STROKE_INNER"

    invoke-direct {v0, v4, v3}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 272
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v4, 0x3

    const-string v5, "FILL"

    invoke-direct {v0, v5, v4}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 265
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1

    const-string v0, "inner"

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0

    :cond_0
    const-string v0, "center"

    .line 277
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 278
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_CENTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0

    .line 280
    :cond_1
    sget-object p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1

    .line 265
    const-class v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;
    .locals 1

    .line 265
    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->$VALUES:[Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    invoke-virtual {v0}, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    return-object v0
.end method

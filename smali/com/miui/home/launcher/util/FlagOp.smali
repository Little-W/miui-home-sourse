.class public abstract Lcom/miui/home/launcher/util/FlagOp;
.super Ljava/lang/Object;
.source "FlagOp.java"


# static fields
.field public static NO_OP:Lcom/miui/home/launcher/util/FlagOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/miui/home/launcher/util/FlagOp$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/FlagOp$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/FlagOp;->NO_OP:Lcom/miui/home/launcher/util/FlagOp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/util/FlagOp$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/miui/home/launcher/util/FlagOp;-><init>()V

    return-void
.end method

.method public static addFlag(I)Lcom/miui/home/launcher/util/FlagOp;
    .locals 1

    .line 14
    new-instance v0, Lcom/miui/home/launcher/util/FlagOp$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/FlagOp$2;-><init>(I)V

    return-object v0
.end method

.method public static removeFlag(I)Lcom/miui/home/launcher/util/FlagOp;
    .locals 1

    .line 23
    new-instance v0, Lcom/miui/home/launcher/util/FlagOp$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/util/FlagOp$3;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public apply(I)I
    .locals 0

    return p1
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$28$yfy4Z7tTodk833JtBTQjA9Au-5A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher$28;->lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

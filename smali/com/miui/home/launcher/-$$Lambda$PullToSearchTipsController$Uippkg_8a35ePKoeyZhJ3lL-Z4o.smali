.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$PullToSearchTipsController$Uippkg_8a35ePKoeyZhJ3lL-Z4o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/PullToSearchTipsController;->lambda$createTipsDialog$1(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

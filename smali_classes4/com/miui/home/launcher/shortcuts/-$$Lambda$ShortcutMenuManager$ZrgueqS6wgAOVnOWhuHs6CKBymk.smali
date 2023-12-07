.class public final synthetic Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;

    invoke-direct {v0}, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;->INSTANCE:Lcom/miui/home/launcher/shortcuts/-$$Lambda$ShortcutMenuManager$ZrgueqS6wgAOVnOWhuHs6CKBymk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/launcher/common/ShortcutInfoCompat;

    check-cast p2, Lcom/miui/launcher/common/ShortcutInfoCompat;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->lambda$static$0(Lcom/miui/launcher/common/ShortcutInfoCompat;Lcom/miui/launcher/common/ShortcutInfoCompat;)I

    move-result p0

    return p0
.end method

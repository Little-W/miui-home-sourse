.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$ShortcutsAdapter$WmgwwaHfKTqwRM4wjvlcli7uv1Q;

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

    invoke-static {p1}, Lcom/miui/home/launcher/ShortcutsAdapter;->lambda$notifyDataSetChanged$0(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.class public final synthetic Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;

    invoke-direct {v0}, Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;->INSTANCE:Lcom/miui/home/launcher/multiselect/-$$Lambda$TopMenuContainer$TkbKd1L1hZSQmjqRO-Mk6epKOxc;

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

    check-cast p1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-static {p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->lambda$onWallpaperColorChanged$0(Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    return-void
.end method

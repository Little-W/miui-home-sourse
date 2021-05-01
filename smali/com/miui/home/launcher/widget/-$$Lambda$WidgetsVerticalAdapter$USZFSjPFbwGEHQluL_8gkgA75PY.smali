.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$USZFSjPFbwGEHQluL_8gkgA75PY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$USZFSjPFbwGEHQluL_8gkgA75PY;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$USZFSjPFbwGEHQluL_8gkgA75PY;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->lambda$getValidShortcutProviderInfos$363(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ShortcutProviderInfo;)Z

    move-result p1

    return p1
.end method

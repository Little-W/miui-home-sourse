.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;->f$0:Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;

    check-cast p1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->lambda$getValidShortcutProviderInfos$0$BaseWidgetsVerticalAdapter(Lcom/miui/home/launcher/ShortcutProviderInfo;)Z

    move-result p0

    return p0
.end method

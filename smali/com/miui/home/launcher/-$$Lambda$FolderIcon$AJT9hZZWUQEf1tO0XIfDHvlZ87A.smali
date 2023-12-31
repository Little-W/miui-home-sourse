.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderIcon$AJT9hZZWUQEf1tO0XIfDHvlZ87A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$AJT9hZZWUQEf1tO0XIfDHvlZ87A;->f$0:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$AJT9hZZWUQEf1tO0XIfDHvlZ87A;->f$0:Lcom/miui/home/launcher/FolderIcon;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->lambda$updateBackground$3(Lcom/miui/home/launcher/FolderIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
